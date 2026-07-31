.class public Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# static fields
.field public static FREI_CHEN_H:[F

.field public static final FREI_CHEN_V:[F

.field public static final PREWITT_H:[F

.field public static final PREWITT_V:[F

.field public static final R2:F

.field public static final ROBERTS_H:[F

.field public static final ROBERTS_V:[F

.field public static SOBEL_H:[F

.field public static final SOBEL_V:[F


# instance fields
.field protected hEdgeMatrix:[F

.field protected vEdgeMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 28
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->R2:F

    .line 30
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->ROBERTS_V:[F

    .line 35
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->ROBERTS_H:[F

    .line 40
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->PREWITT_V:[F

    .line 45
    new-array v0, v3, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->PREWITT_H:[F

    .line 50
    new-array v0, v3, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->SOBEL_V:[F

    .line 55
    new-array v0, v3, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->SOBEL_H:[F

    .line 60
    new-array v0, v3, [F

    aput v5, v0, v7

    const/4 v1, 0x1

    aput v4, v0, v1

    const/4 v1, 0x2

    aput v6, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->R2:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->R2:F

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v5, v0, v1

    const/4 v1, 0x7

    aput v4, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->FREI_CHEN_V:[F

    .line 65
    new-array v0, v3, [F

    aput v5, v0, v7

    const/4 v1, 0x1

    sget v2, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->R2:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v5, v0, v1

    const/4 v1, 0x3

    aput v4, v0, v1

    const/4 v1, 0x4

    aput v4, v0, v1

    const/4 v1, 0x5

    aput v4, v0, v1

    const/4 v1, 0x6

    aput v6, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->R2:F

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v6, v0, v1

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->FREI_CHEN_H:[F

    return-void

    .line 30
    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 35
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 40
    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 45
    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 50
    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 55
    :array_5
    .array-data 4
        -0x40800000    # -1.0f
        -0x40000000    # -2.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 71
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->SOBEL_V:[F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->vEdgeMatrix:[F

    .line 72
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->SOBEL_H:[F

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->hEdgeMatrix:[F

    .line 75
    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 23

    .prologue
    .line 94
    const/4 v13, 0x0

    .line 95
    mul-int v2, p1, p2

    new-array v15, v2, [I

    .line 97
    const/4 v2, 0x0

    move v14, v2

    move v2, v13

    :goto_0
    move/from16 v0, p2

    if-ge v14, v0, :cond_6

    .line 98
    const/4 v4, 0x0

    move v13, v2

    :goto_1
    move/from16 v0, p1

    if-ge v4, v0, :cond_5

    .line 100
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 101
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 102
    mul-int v2, v14, p1

    add-int/2addr v2, v4

    aget v2, p3, v2

    const/high16 v3, -0x1000000

    and-int v16, v2, v3

    .line 104
    const/4 v2, -0x1

    move v12, v2

    :goto_2
    const/4 v2, 0x1

    if-gt v12, v2, :cond_4

    .line 105
    add-int v2, v14, v12

    .line 107
    if-ltz v2, :cond_2

    move/from16 v0, p2

    if-ge v2, v0, :cond_2

    .line 108
    mul-int v2, v2, p1

    .line 111
    :goto_3
    add-int/lit8 v3, v12, 0x1

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v17, v3, 0x1

    .line 112
    const/4 v3, -0x1

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v3

    :goto_4
    const/4 v3, 0x1

    if-gt v5, v3, :cond_3

    .line 113
    add-int v3, v4, v5

    .line 114
    if-ltz v3, :cond_0

    move/from16 v0, p1

    if-lt v3, v0, :cond_1

    :cond_0
    move v3, v4

    .line 116
    :cond_1
    add-int/2addr v3, v2

    aget v3, p3, v3

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->hEdgeMatrix:[F

    move-object/from16 v18, v0

    add-int v19, v17, v5

    aget v18, v18, v19

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->vEdgeMatrix:[F

    move-object/from16 v19, v0

    add-int v20, v17, v5

    aget v19, v19, v20

    .line 120
    const/high16 v20, 0xff0000

    and-int v20, v20, v3

    shr-int/lit8 v20, v20, 0x10

    .line 121
    const v21, 0xff00

    and-int v21, v21, v3

    shr-int/lit8 v21, v21, 0x8

    .line 122
    and-int/lit16 v3, v3, 0xff

    .line 123
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v11, v11, v22

    .line 124
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v10, v10, v22

    .line 125
    int-to-float v0, v3

    move/from16 v22, v0

    mul-float v18, v18, v22

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v9, v9, v18

    .line 126
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v8, v8, v18

    .line 127
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v7, v7, v18

    .line 128
    int-to-float v3, v3

    mul-float v3, v3, v19

    float-to-int v3, v3

    add-int/2addr v6, v3

    .line 112
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_4

    .line 110
    :cond_2
    mul-int v2, v14, p1

    goto/16 :goto_3

    .line 104
    :cond_3
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    goto/16 :goto_2

    .line 131
    :cond_4
    mul-int v2, v10, v10

    mul-int v3, v7, v7

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v10, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v2, v10

    double-to-int v2, v2

    .line 132
    mul-int v3, v9, v9

    mul-int/2addr v6, v6

    add-int/2addr v3, v6

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v10, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v6, v10

    double-to-int v3, v6

    .line 133
    mul-int v6, v8, v8

    mul-int/2addr v5, v5

    add-int/2addr v5, v6

    int-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide v8, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v6, v8

    double-to-int v5, v6

    .line 134
    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v6

    .line 135
    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    .line 136
    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 137
    add-int/lit8 v2, v13, 0x1

    shl-int/lit8 v6, v6, 0x10

    or-int v6, v6, v16

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v6

    or-int/2addr v3, v5

    aput v3, v15, v13

    .line 98
    add-int/lit8 v4, v4, 0x1

    move v13, v2

    goto/16 :goto_1

    .line 97
    :cond_5
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v2, v13

    goto/16 :goto_0

    .line 141
    :cond_6
    return-object v15
.end method

.method public getHEdgeMatrix()[F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->hEdgeMatrix:[F

    return-object v0
.end method

.method public getVEdgeMatrix()[F
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->vEdgeMatrix:[F

    return-object v0
.end method

.method public setHEdgeMatrix([F)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->hEdgeMatrix:[F

    .line 87
    return-void
.end method

.method public setVEdgeMatrix([F)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/EdgeFilter;->vEdgeMatrix:[F

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "Edges/Detect Edges"

    return-object v0
.end method
