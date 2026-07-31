.class public LCatalano/Imaging/Tools/ColorConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;
    }
.end annotation


# static fields
.field public static CIE10_A:[F

.field public static CIE10_C:[F

.field public static CIE10_D50:[F

.field public static CIE10_D55:[F

.field public static CIE10_D65:[F

.field public static CIE10_D75:[F

.field public static CIE10_F11:[F

.field public static CIE10_F2:[F

.field public static CIE10_F7:[F

.field public static CIE2_A:[F

.field public static CIE2_C:[F

.field public static CIE2_D50:[F

.field public static CIE2_D55:[F

.field public static CIE2_D65:[F

.field public static CIE2_D75:[F

.field public static CIE2_F11:[F

.field public static CIE2_F2:[F

.field public static CIE2_F7:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 55
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_A:[F

    .line 56
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_C:[F

    .line 57
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_D50:[F

    .line 58
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_D55:[F

    .line 59
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_D65:[F

    .line 60
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_D75:[F

    .line 61
    new-array v0, v1, [F

    fill-array-data v0, :array_6

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_F2:[F

    .line 62
    new-array v0, v1, [F

    fill-array-data v0, :array_7

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_F7:[F

    .line 63
    new-array v0, v1, [F

    fill-array-data v0, :array_8

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE2_F11:[F

    .line 67
    new-array v0, v1, [F

    fill-array-data v0, :array_9

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_A:[F

    .line 68
    new-array v0, v1, [F

    fill-array-data v0, :array_a

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_C:[F

    .line 69
    new-array v0, v1, [F

    fill-array-data v0, :array_b

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_D50:[F

    .line 70
    new-array v0, v1, [F

    fill-array-data v0, :array_c

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_D55:[F

    .line 71
    new-array v0, v1, [F

    fill-array-data v0, :array_d

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_D65:[F

    .line 72
    new-array v0, v1, [F

    fill-array-data v0, :array_e

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_D75:[F

    .line 73
    new-array v0, v1, [F

    fill-array-data v0, :array_f

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_F2:[F

    .line 74
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_F7:[F

    .line 75
    new-array v0, v1, [F

    fill-array-data v0, :array_11

    sput-object v0, LCatalano/Imaging/Tools/ColorConverter;->CIE10_F11:[F

    return-void

    .line 55
    :array_0
    .array-data 4
        0x42dbb333    # 109.85f
        0x42c80000    # 100.0f
        0x420e570a    # 35.585f
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x42c425e3
        0x42c80000    # 100.0f
        0x42ec76c9
    .end array-data

    .line 57
    :array_2
    .array-data 4
        0x42c0d810
        0x42c80000    # 100.0f
        0x42a50ac1
    .end array-data

    .line 58
    :array_3
    .array-data 4
        0x42bf5d2f    # 95.682f
        0x42c80000    # 100.0f
        0x42b84c4a
    .end array-data

    .line 59
    :array_4
    .array-data 4
        0x42be1810
        0x42c80000    # 100.0f
        0x42d9c419
    .end array-data

    .line 60
    :array_5
    .array-data 4
        0x42bdf1aa    # 94.972f
        0x42c80000    # 100.0f
        0x42f546a8    # 122.638f
    .end array-data

    .line 61
    :array_6
    .array-data 4
        0x42c65fbe
        0x42c80000    # 100.0f
        0x4286ca3d
    .end array-data

    .line 62
    :array_7
    .array-data 4
        0x42be1687
        0x42c80000    # 100.0f
        0x42d9828f
    .end array-data

    .line 63
    :array_8
    .array-data 4
        0x42c9ee98
        0x42c80000    # 100.0f
        0x4280bd71    # 64.37f
    .end array-data

    .line 67
    :array_9
    .array-data 4
        0x42de49ba
        0x42c80000    # 100.0f
        0x420ccccd    # 35.2f
    .end array-data

    .line 68
    :array_a
    .array-data 4
        0x42c291ec
        0x42c80000    # 100.0f
        0x42e84a3d
    .end array-data

    .line 69
    :array_b
    .array-data 4
        0x42c170a4    # 96.72f
        0x42c80000    # 100.0f
        0x42a2daa0
    .end array-data

    .line 70
    :array_c
    .array-data 4
        0x42bf9917
        0x42c80000    # 100.0f
        0x42b5da1d
    .end array-data

    .line 71
    :array_d
    .array-data 4
        0x42bd9f3b
        0x42c80000    # 100.0f
        0x42d69ba6    # 107.304f
    .end array-data

    .line 72
    :array_e
    .array-data 4
        0x42bcd4fe    # 94.416f
        0x42c80000    # 100.0f
        0x42f14831
    .end array-data

    .line 73
    :array_f
    .array-data 4
        0x42ce8f5c    # 103.28f
        0x42c80000    # 100.0f
        0x428a0d50    # 69.026f
    .end array-data

    .line 74
    :array_10
    .array-data 4
        0x42bf9581    # 95.792f
        0x42c80000    # 100.0f
        0x42d75fbe
    .end array-data

    .line 75
    :array_11
    .array-data 4
        0x42cfbb64
        0x42c80000    # 100.0f
        0x42834106
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CMYKtoRGB(FFFF)[I
    .locals 6

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 113
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 115
    const/4 v1, 0x0

    sub-float v2, v4, p0

    mul-float/2addr v2, v5

    sub-float v3, v4, p3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 116
    const/4 v1, 0x1

    sub-float v2, v4, p1

    mul-float/2addr v2, v5

    sub-float v3, v4, p3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 117
    const/4 v1, 0x2

    sub-float v2, v4, p2

    mul-float/2addr v2, v5

    sub-float v3, v4, p3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    .line 119
    return-object v0
.end method

.method public static HSLtoRGB(FFF)[I
    .locals 10

    .prologue
    const v9, 0x3eaaaaab

    const/high16 v8, 0x437f0000    # 255.0f

    .line 729
    const/4 v0, 0x3

    new-array v3, v0, [I

    .line 732
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 735
    mul-float v0, p2, v8

    float-to-int v0, v0

    int-to-float v0, v0

    move v1, v0

    move v2, v0

    .line 752
    :goto_0
    const/4 v4, 0x0

    float-to-int v2, v2

    aput v2, v3, v4

    .line 753
    const/4 v2, 0x1

    float-to-int v1, v1

    aput v1, v3, v2

    .line 754
    const/4 v1, 0x2

    float-to-int v0, v0

    aput v0, v3, v1

    .line 756
    return-object v3

    .line 740
    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    div-float v4, p0, v0

    .line 742
    float-to-double v0, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v6

    if-gez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    mul-float/2addr v0, p2

    .line 745
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    sub-float v5, v1, v0

    .line 747
    add-float v1, v4, v9

    invoke-static {v5, v0, v1}, LCatalano/Imaging/Tools/ColorConverter;->a(FFF)F

    move-result v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v2, v1

    .line 748
    invoke-static {v5, v0, v4}, LCatalano/Imaging/Tools/ColorConverter;->a(FFF)F

    move-result v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    int-to-float v1, v1

    .line 749
    sub-float/2addr v4, v9

    invoke-static {v5, v0, v4}, LCatalano/Imaging/Tools/ColorConverter;->a(FFF)F

    move-result v0

    mul-float/2addr v0, v8

    float-to-int v0, v0

    int-to-float v0, v0

    goto :goto_0

    .line 742
    :cond_1
    add-float v0, p2, p1

    mul-float v1, p2, p1

    sub-float/2addr v0, v1

    goto :goto_1
.end method

.method public static HSVtoRGB(FFF)[I
    .locals 16

    .prologue
    .line 361
    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 363
    move/from16 v0, p0

    float-to-double v4, v0

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x40c00000    # 6.0f

    rem-float/2addr v3, v4

    .line 364
    move/from16 v0, p0

    float-to-double v4, v0

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    move/from16 v0, p0

    float-to-double v6, v0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    .line 365
    move/from16 v0, p2

    float-to-double v6, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move/from16 v0, p1

    float-to-double v10, v0

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-float v5, v6

    .line 366
    move/from16 v0, p2

    float-to-double v6, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-float v10, v4, p1

    float-to-double v10, v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    double-to-float v6, v6

    .line 367
    move/from16 v0, p2

    float-to-double v8, v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    float-to-double v14, v4

    sub-double/2addr v12, v14

    move/from16 v0, p1

    float-to-double v14, v0

    mul-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    double-to-float v4, v8

    .line 369
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-nez v7, :cond_1

    .line 370
    const/4 v3, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v6, v6, p2

    float-to-int v6, v6

    aput v6, v2, v3

    .line 371
    const/4 v3, 0x1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v2, v3

    .line 372
    const/4 v3, 0x2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    .line 400
    :cond_0
    :goto_0
    return-object v2

    .line 374
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v3, v7

    if-nez v7, :cond_2

    .line 375
    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v2, v3

    .line 376
    const/4 v3, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, p2

    float-to-int v4, v4

    aput v4, v2, v3

    .line 377
    const/4 v3, 0x2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    goto :goto_0

    .line 379
    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v3, v7

    if-nez v7, :cond_3

    .line 380
    const/4 v3, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v2, v3

    .line 381
    const/4 v3, 0x1

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v5, v5, p2

    float-to-int v5, v5

    aput v5, v2, v3

    .line 382
    const/4 v3, 0x2

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    goto :goto_0

    .line 384
    :cond_3
    const/high16 v7, 0x40400000    # 3.0f

    cmpl-float v7, v3, v7

    if-nez v7, :cond_4

    .line 385
    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    .line 386
    const/4 v3, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, p2

    float-to-int v4, v4

    aput v4, v2, v3

    .line 387
    const/4 v3, 0x2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v2, v3

    goto :goto_0

    .line 389
    :cond_4
    const/high16 v7, 0x40800000    # 4.0f

    cmpl-float v7, v3, v7

    if-nez v7, :cond_5

    .line 390
    const/4 v3, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v2, v3

    .line 391
    const/4 v3, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, p2

    float-to-int v4, v4

    aput v4, v2, v3

    .line 392
    const/4 v3, 0x2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    goto :goto_0

    .line 394
    :cond_5
    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 395
    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, p2

    float-to-int v4, v4

    aput v4, v2, v3

    .line 396
    const/4 v3, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v3

    .line 397
    const/4 v3, 0x2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    aput v4, v2, v3

    goto/16 :goto_0
.end method

.method public static HunterLABtoRGB(FFF)[I
    .locals 4

    .prologue
    .line 652
    invoke-static {p0, p1, p2}, LCatalano/Imaging/Tools/ColorConverter;->HunterLABtoXYZ(FFF)[F

    move-result-object v0

    .line 653
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, LCatalano/Imaging/Tools/ColorConverter;->XYZtoRGB(FFF)[I

    move-result-object v0

    return-object v0
.end method

.method public static HunterLABtoXYZ(FFF)[F
    .locals 5

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 614
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 617
    div-float v1, p0, v4

    .line 618
    const/high16 v2, 0x418c0000    # 17.5f

    div-float v2, p1, v2

    mul-float/2addr v2, p0

    div-float/2addr v2, v4

    .line 619
    const/high16 v3, 0x40e00000    # 7.0f

    div-float v3, p2, v3

    mul-float/2addr v3, p0

    div-float/2addr v3, v4

    .line 621
    mul-float/2addr v1, v1

    .line 622
    add-float/2addr v2, v1

    const v4, 0x3f828f5c    # 1.02f

    div-float/2addr v2, v4

    .line 623
    sub-float/2addr v3, v1

    neg-float v3, v3

    const v4, 0x3f58d4fe    # 0.847f

    div-float/2addr v3, v4

    .line 625
    const/4 v4, 0x0

    aput v2, v0, v4

    .line 626
    const/4 v2, 0x1

    aput v1, v0, v2

    .line 627
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 629
    return-object v0
.end method

.method public static LABtoRGB(FFF[F)[I
    .locals 4

    .prologue
    .line 797
    invoke-static {p0, p1, p2, p3}, LCatalano/Imaging/Tools/ColorConverter;->LABtoXYZ(FFF[F)[F

    move-result-object v0

    .line 798
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, LCatalano/Imaging/Tools/ColorConverter;->XYZtoRGB(FFF)[I

    move-result-object v0

    return-object v0
.end method

.method public static LABtoXYZ(FFF[F)[F
    .locals 8

    .prologue
    .line 847
    const/4 v0, 0x3

    new-array v3, v0, [F

    .line 849
    const/high16 v0, 0x41800000    # 16.0f

    add-float/2addr v0, p0

    const/high16 v1, 0x42e80000    # 116.0f

    div-float/2addr v0, v1

    .line 850
    const/high16 v1, 0x43fa0000    # 500.0f

    div-float v1, p1, v1

    add-float/2addr v1, v0

    .line 851
    const/high16 v2, 0x43480000    # 200.0f

    div-float v2, p2, v2

    sub-float v2, v0, v2

    .line 854
    float-to-double v4, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 855
    float-to-double v4, v0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 860
    :goto_0
    float-to-double v4, v1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 861
    float-to-double v4, v1

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    .line 866
    :goto_1
    float-to-double v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide v6, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 867
    float-to-double v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 871
    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p3, v5

    mul-float/2addr v1, v5

    aput v1, v3, v4

    .line 872
    const/4 v1, 0x1

    const/4 v4, 0x1

    aget v4, p3, v4

    mul-float/2addr v0, v4

    aput v0, v3, v1

    .line 873
    const/4 v0, 0x2

    const/4 v1, 0x2

    aget v1, p3, v1

    mul-float/2addr v1, v2

    aput v1, v3, v0

    .line 875
    return-object v3

    .line 857
    :cond_0
    const/4 v4, 0x0

    sub-float/2addr v0, v4

    float-to-double v4, v0

    const-wide v6, 0x401f25e353f7ced9L    # 7.787

    div-double/2addr v4, v6

    double-to-float v0, v4

    goto :goto_0

    .line 863
    :cond_1
    const/4 v4, 0x0

    sub-float/2addr v1, v4

    float-to-double v4, v1

    const-wide v6, 0x401f25e353f7ced9L    # 7.787

    div-double/2addr v4, v6

    double-to-float v1, v4

    goto :goto_1

    .line 869
    :cond_2
    const/4 v4, 0x0

    sub-float/2addr v2, v4

    float-to-double v4, v2

    const-wide v6, 0x401f25e353f7ced9L    # 7.787

    div-double/2addr v4, v6

    double-to-float v2, v4

    goto :goto_2
.end method

.method public static RGBtoC1C2C3(III)[F
    .locals 4

    .prologue
    .line 887
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 889
    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v2, p0, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 890
    const/4 v1, 0x1

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v2, p1, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 891
    const/4 v1, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int v2, p2, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    .line 893
    return-object v0
.end method

.method public static RGBtoCMYK(III)[F
    .locals 7

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 87
    int-to-float v1, p0

    div-float/2addr v1, v4

    .line 88
    int-to-float v2, p1

    div-float/2addr v2, v4

    .line 89
    int-to-float v3, p2

    div-float/2addr v3, v4

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v4, v6, v4

    .line 92
    sub-float v1, v6, v1

    sub-float/2addr v1, v4

    sub-float v5, v6, v4

    div-float/2addr v1, v5

    .line 93
    sub-float v2, v6, v2

    sub-float/2addr v2, v4

    sub-float v5, v6, v4

    div-float/2addr v2, v5

    .line 94
    sub-float v3, v6, v3

    sub-float/2addr v3, v4

    sub-float v5, v6, v4

    div-float/2addr v3, v5

    .line 96
    const/4 v5, 0x0

    aput v1, v0, v5

    .line 97
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 98
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 99
    const/4 v1, 0x3

    aput v4, v0, v1

    .line 101
    return-object v0
.end method

.method public static RGBtoGrayscale(III)F
    .locals 3

    .prologue
    .line 924
    int-to-float v0, p0

    const v1, 0x3e59999a    # 0.2125f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    const v2, 0x3f372474    # 0.7154f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, p2

    const v2, 0x3d93a92a    # 0.0721f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static RGBtoHLS(III)[F
    .locals 13

    .prologue
    .line 664
    const/4 v0, 0x3

    new-array v2, v0, [F

    .line 666
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 667
    int-to-float v1, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v3, v1, v3

    .line 668
    int-to-float v1, p2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v4, v1, v4

    .line 670
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 671
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 672
    sub-float v6, v5, v1

    .line 677
    add-float v7, v5, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 679
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-nez v8, :cond_0

    .line 681
    const/4 v1, 0x0

    .line 682
    const/4 v0, 0x0

    .line 714
    :goto_0
    const/4 v3, 0x0

    aput v1, v2, v3

    .line 715
    const/4 v1, 0x1

    aput v0, v2, v1

    .line 716
    const/4 v0, 0x2

    aput v7, v2, v0

    .line 718
    return-object v2

    .line 687
    :cond_0
    float-to-double v8, v7

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_3

    add-float/2addr v1, v5

    div-float v1, v6, v1

    .line 692
    :goto_1
    cmpl-float v8, v0, v5

    if-nez v8, :cond_4

    .line 694
    sub-float v0, v3, v4

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v0, v3

    div-float/2addr v0, v6

    .line 706
    :goto_2
    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 707
    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v0, v3

    .line 708
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 709
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    .line 711
    :cond_2
    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_0

    .line 687
    :cond_3
    const/high16 v8, 0x40000000    # 2.0f

    sub-float/2addr v8, v5

    sub-float v1, v8, v1

    div-float v1, v6, v1

    goto :goto_1

    .line 696
    :cond_4
    cmpl-float v5, v3, v5

    if-nez v5, :cond_5

    .line 698
    const v3, 0x3eaaaaab

    sub-float v0, v4, v0

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v0, v4

    div-float/2addr v0, v6

    add-float/2addr v0, v3

    goto :goto_2

    .line 702
    :cond_5
    const v4, 0x3f2aaaab

    sub-float/2addr v0, v3

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v0, v3

    div-float/2addr v0, v6

    add-float/2addr v0, v4

    goto :goto_2
.end method

.method public static RGBtoHSV(III)[F
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 318
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 319
    int-to-float v1, p0

    div-float/2addr v1, v4

    .line 320
    int-to-float v2, p1

    div-float/2addr v2, v4

    .line 321
    int-to-float v3, p2

    div-float/2addr v3, v4

    .line 323
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 324
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 325
    sub-float v6, v4, v5

    .line 328
    cmpl-float v5, v4, v5

    if-nez v5, :cond_1

    .line 329
    aput v8, v0, v7

    .line 342
    :cond_0
    :goto_0
    cmpl-float v1, v6, v8

    if-nez v1, :cond_4

    .line 343
    aput v8, v0, v10

    .line 348
    :goto_1
    const/4 v1, 0x2

    aput v4, v0, v1

    .line 350
    return-object v0

    .line 331
    :cond_1
    cmpl-float v5, v4, v1

    if-nez v5, :cond_2

    .line 332
    sub-float v1, v2, v3

    div-float/2addr v1, v6

    mul-float/2addr v1, v9

    aput v1, v0, v7

    goto :goto_0

    .line 334
    :cond_2
    cmpl-float v5, v4, v2

    if-nez v5, :cond_3

    .line 335
    sub-float v1, v3, v1

    div-float/2addr v1, v6

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, v9

    aput v1, v0, v7

    goto :goto_0

    .line 337
    :cond_3
    cmpl-float v3, v4, v3

    if-nez v3, :cond_0

    .line 338
    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, v9

    aput v1, v0, v7

    goto :goto_0

    .line 345
    :cond_4
    div-float v1, v6, v4

    aput v1, v0, v10

    goto :goto_1
.end method

.method public static RGBtoHunterLAB(III)[F
    .locals 4

    .prologue
    .line 640
    invoke-static {p0, p1, p2}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoXYZ(III)[F

    move-result-object v0

    .line 641
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0}, LCatalano/Imaging/Tools/ColorConverter;->XYZtoHunterLAB(FFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static RGBtoLAB(III[F)[F
    .locals 4

    .prologue
    .line 782
    invoke-static {p0, p1, p2}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoXYZ(III)[F

    move-result-object v0

    .line 783
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-static {v1, v2, v0, p3}, LCatalano/Imaging/Tools/ColorConverter;->XYZtoLAB(FFF[F)[F

    move-result-object v0

    .line 785
    return-object v0
.end method

.method public static RGBtoO1O2(III)[F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 906
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 908
    const/4 v1, 0x0

    sub-int v2, p0, p1

    int-to-float v2, v2

    div-float/2addr v2, v4

    aput v2, v0, v1

    .line 909
    const/4 v1, 0x1

    add-int v2, p0, p1

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    int-to-float v3, p2

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 911
    return-object v0
.end method

.method public static RGBtoXYZ(III)[F
    .locals 10

    .prologue
    .line 503
    const/4 v0, 0x3

    new-array v3, v0, [F

    .line 505
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 506
    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 507
    int-to-float v2, p2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v4, v2, v4

    .line 510
    float-to-double v6, v0

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v2, v6, v8

    if-lez v2, :cond_0

    .line 511
    const v2, 0x3d6147ae    # 0.055f

    add-float/2addr v0, v2

    const v2, 0x3f870a3d    # 1.055f

    div-float/2addr v0, v2

    float-to-double v6, v0

    const-wide v8, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move v2, v0

    .line 516
    :goto_0
    float-to-double v6, v1

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v0, v6, v8

    if-lez v0, :cond_1

    .line 517
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr v0, v1

    const v1, 0x3f870a3d    # 1.055f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v6, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move v1, v0

    .line 522
    :goto_1
    float-to-double v6, v4

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpl-double v0, v6, v8

    if-lez v0, :cond_2

    .line 523
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr v0, v4

    const v4, 0x3f870a3d    # 1.055f

    div-float/2addr v0, v4

    float-to-double v4, v0

    const-wide v6, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 527
    :goto_2
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    .line 528
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v1, v4

    .line 529
    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    .line 531
    const v4, 0x3ed32d0a

    mul-float/2addr v4, v2

    const v5, 0x3eb714ba    # 0.35758f

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const v5, 0x3e38c0cf

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    .line 532
    const v5, 0x3e59c66d

    mul-float/2addr v5, v2

    const v6, 0x3f3714ba

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    const v6, 0x3d93cd57

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    .line 533
    const v6, 0x3c9e6256    # 0.019334f

    mul-float/2addr v2, v6

    const v6, 0x3df41b76

    mul-float/2addr v1, v6

    add-float/2addr v1, v2

    const v2, 0x3f734214

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 535
    const/4 v1, 0x0

    aput v4, v3, v1

    .line 536
    const/4 v1, 0x1

    aput v5, v3, v1

    .line 537
    const/4 v1, 0x2

    aput v0, v3, v1

    .line 539
    return-object v3

    .line 513
    :cond_0
    const v2, 0x414eb852    # 12.92f

    div-float/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 519
    :cond_1
    const v0, 0x414eb852    # 12.92f

    div-float v0, v1, v0

    move v1, v0

    goto :goto_1

    .line 525
    :cond_2
    const v0, 0x414eb852    # 12.92f

    div-float v0, v4, v0

    goto :goto_2
.end method

.method public static RGBtoYCC(III)[F
    .locals 7

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 411
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 413
    int-to-float v1, p0

    div-float/2addr v1, v4

    .line 414
    int-to-float v2, p1

    div-float/2addr v2, v4

    .line 415
    int-to-float v3, p2

    div-float/2addr v3, v4

    .line 417
    const v4, 0x3e5a1cac    # 0.213f

    mul-float/2addr v4, v1

    const v5, 0x3ed6872b    # 0.419f

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    const v5, 0x3da5e354    # 0.081f

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 418
    const v5, -0x41f9db23    # -0.131f

    mul-float/2addr v5, v1

    const v6, 0x3e83126f    # 0.256f

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    const v5, 0x3ec624dd    # 0.387f

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    const v5, 0x3f1cac08    # 0.612f

    add-float/2addr v2, v5

    .line 419
    const v5, 0x3ebef9db    # 0.373f

    mul-float/2addr v5, v1

    const v6, 0x3e9fbe77    # 0.312f

    mul-float/2addr v1, v6

    sub-float v1, v5, v1

    const v5, 0x3d79db23    # 0.061f

    mul-float/2addr v3, v5

    sub-float/2addr v1, v3

    const v3, 0x3f0978d5    # 0.537f

    add-float/2addr v1, v3

    .line 421
    const/4 v3, 0x0

    aput v4, v0, v3

    .line 422
    const/4 v3, 0x1

    aput v2, v0, v3

    .line 423
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 425
    return-object v0
.end method

.method public static RGBtoYCbCr(IIILCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[F
    .locals 12

    .prologue
    .line 228
    int-to-float v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 229
    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v3, v1, v2

    .line 230
    int-to-float v1, p2

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v4, v1, v2

    .line 232
    const/4 v1, 0x3

    new-array v5, v1, [F

    .line 235
    sget-object v1, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    if-ne p3, v1, :cond_0

    .line 236
    const-wide v6, 0x3fd322d0e5604189L    # 0.299

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fe2c8b439581062L    # 0.587

    float-to-double v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fbd2f1a9fbe76c9L    # 0.114

    float-to-double v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v2, v6

    .line 237
    const-wide v6, -0x403a5e353f7ced91L    # -0.169

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fd52f1a9fbe76c9L    # 0.331

    float-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    float-to-double v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 238
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fdad0e560418937L    # 0.419

    float-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3fb4bc6a7ef9db23L    # 0.081

    float-to-double v10, v4

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v0, v6

    .line 246
    :goto_0
    const/4 v3, 0x0

    aput v2, v5, v3

    .line 247
    const/4 v2, 0x1

    aput v1, v5, v2

    .line 248
    const/4 v1, 0x2

    aput v0, v5, v1

    .line 250
    return-object v5

    .line 241
    :cond_0
    const-wide v6, 0x3fcc5a1cac083127L    # 0.2215

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fe6e48e8a71de6aL    # 0.7154

    float-to-double v10, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide v8, 0x3fb27525460aa64cL    # 0.0721

    float-to-double v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v2, v6

    .line 242
    const-wide v6, -0x4042b020c49ba5e3L    # -0.1145

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fd8ac083126e979L    # 0.3855

    float-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    float-to-double v10, v4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 243
    const-wide v6, 0x3fe00d1b71758e22L    # 0.5016

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fdd288ce703afb8L    # 0.4556

    float-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3fa780346dc5d639L    # 0.0459

    float-to-double v10, v4

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v0, v6

    goto :goto_0
.end method

.method public static RGBtoYCoCg(III)[F
    .locals 9

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 457
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 459
    int-to-float v1, p0

    div-float/2addr v1, v4

    .line 460
    int-to-float v2, p1

    div-float/2addr v2, v4

    .line 461
    int-to-float v3, p2

    div-float/2addr v3, v4

    .line 463
    div-float v4, v1, v8

    div-float v5, v2, v7

    add-float/2addr v4, v5

    div-float v5, v3, v8

    add-float/2addr v4, v5

    .line 464
    div-float v5, v1, v7

    div-float v6, v3, v7

    sub-float/2addr v5, v6

    .line 465
    neg-float v1, v1

    div-float/2addr v1, v8

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    div-float v2, v3, v8

    sub-float/2addr v1, v2

    .line 467
    const/4 v2, 0x0

    aput v4, v0, v2

    .line 468
    const/4 v2, 0x1

    aput v5, v0, v2

    .line 469
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 471
    return-object v0
.end method

.method public static RGBtoYIQ(III)[F
    .locals 12

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 182
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 185
    int-to-float v1, p0

    div-float/2addr v1, v4

    .line 186
    int-to-float v2, p1

    div-float/2addr v2, v4

    .line 187
    int-to-float v3, p2

    div-float/2addr v3, v4

    .line 189
    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    float-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    float-to-double v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    float-to-double v8, v3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 190
    const-wide v6, 0x3fe3126e978d4fdfL    # 0.596

    float-to-double v8, v1

    mul-double/2addr v6, v8

    const-wide v8, 0x3fd199999999999aL    # 0.275

    float-to-double v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3fd49ba5e353f7cfL    # 0.322

    float-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    .line 191
    const-wide v6, 0x3fcb22d0e5604189L    # 0.212

    float-to-double v8, v1

    mul-double/2addr v6, v8

    const-wide v8, 0x3fe0bc6a7ef9db23L    # 0.523

    float-to-double v10, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3fd3e76c8b439581L    # 0.311

    float-to-double v2, v3

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-float v1, v2

    .line 193
    const/4 v2, 0x0

    aput v4, v0, v2

    .line 194
    const/4 v2, 0x1

    aput v5, v0, v2

    .line 195
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 197
    return-object v0
.end method

.method public static RGBtoYUV(III)[F
    .locals 12

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 134
    int-to-float v0, p0

    div-float/2addr v0, v3

    .line 135
    int-to-float v1, p1

    div-float/2addr v1, v3

    .line 136
    int-to-float v2, p2

    div-float/2addr v2, v3

    .line 138
    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 141
    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    float-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide v6, 0x3fe2c8b439581062L    # 0.587

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x3fbd2f1a9fbe76c9L    # 0.114

    float-to-double v8, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 142
    const-wide v6, -0x403d2ad81adea897L    # -0.14713

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fd27caea747d806L    # 0.28886

    float-to-double v10, v1

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    const-wide v8, 0x3fdbe76c8b439581L    # 0.436

    float-to-double v10, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    .line 143
    const-wide v6, 0x3fe3ae147ae147aeL    # 0.615

    float-to-double v8, v0

    mul-double/2addr v6, v8

    const-wide v8, 0x3fe07acc4ef88b97L    # 0.51499

    float-to-double v0, v1

    mul-double/2addr v0, v8

    sub-double v0, v6, v0

    const-wide v6, 0x3fb99a415f45e0b5L    # 0.10001

    float-to-double v8, v2

    mul-double/2addr v6, v8

    sub-double/2addr v0, v6

    double-to-float v0, v0

    .line 145
    const/4 v1, 0x0

    aput v4, v3, v1

    .line 146
    const/4 v1, 0x1

    aput v5, v3, v1

    .line 147
    const/4 v1, 0x2

    aput v0, v3, v1

    .line 149
    return-object v3
.end method

.method public static RGChromaticity(III)[D
    .locals 10

    .prologue
    const-wide v8, 0x3fd54fdf3b645a1dL    # 0.333

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 284
    const/4 v0, 0x5

    new-array v0, v0, [D

    .line 286
    add-int v1, p0, p1

    add-int/2addr v1, p2

    int-to-double v2, v1

    .line 289
    int-to-double v4, p0

    div-double/2addr v4, v2

    aput-wide v4, v0, v6

    .line 292
    int-to-double v4, p1

    div-double v2, v4, v2

    aput-wide v2, v0, v7

    .line 295
    const/4 v1, 0x2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aget-wide v4, v0, v6

    sub-double/2addr v2, v4

    aget-wide v4, v0, v7

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 297
    aget-wide v2, v0, v6

    sub-double/2addr v2, v8

    .line 298
    aget-wide v4, v0, v7

    sub-double/2addr v4, v8

    .line 301
    const/4 v1, 0x3

    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    aput-wide v6, v0, v1

    .line 304
    const/4 v1, 0x4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 306
    return-object v0
.end method

.method public static XYZtoHunterLAB(FFF)[F
    .locals 6

    .prologue
    .line 590
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 593
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 595
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    .line 596
    const/high16 v3, 0x418c0000    # 17.5f

    const v4, 0x3f828f5c    # 1.02f

    mul-float/2addr v4, p0

    sub-float/2addr v4, p1

    div-float/2addr v4, v1

    mul-float/2addr v3, v4

    .line 597
    const/high16 v4, 0x40e00000    # 7.0f

    const v5, 0x3f58d4fe    # 0.847f

    mul-float/2addr v5, p2

    sub-float v5, p1, v5

    div-float v1, v5, v1

    mul-float/2addr v1, v4

    .line 599
    const/4 v4, 0x0

    aput v2, v0, v4

    .line 600
    const/4 v2, 0x1

    aput v3, v0, v2

    .line 601
    const/4 v2, 0x2

    aput v1, v0, v2

    .line 603
    return-object v0
.end method

.method public static XYZtoLAB(FFF[F)[F
    .locals 10

    .prologue
    .line 810
    const/4 v0, 0x3

    new-array v3, v0, [F

    .line 812
    const/4 v0, 0x0

    aget v0, p3, v0

    div-float v0, p0, v0

    .line 813
    const/4 v1, 0x1

    aget v1, p3, v1

    div-float v1, p1, v1

    .line 814
    const/4 v2, 0x2

    aget v2, p3, v2

    div-float v4, p2, v2

    .line 816
    float-to-double v6, v0

    const-wide v8, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v2, v6, v8

    if-lez v2, :cond_0

    .line 817
    float-to-double v6, v0

    const-wide v8, 0x3fd51eb860000000L    # 0.33000001311302185

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move v2, v0

    .line 821
    :goto_0
    float-to-double v6, v1

    const-wide v8, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v6, v8

    if-lez v0, :cond_1

    .line 822
    float-to-double v0, v1

    const-wide v6, 0x3fd51eb860000000L    # 0.33000001311302185

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move v1, v0

    .line 826
    :goto_1
    float-to-double v6, v4

    const-wide v8, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, v6, v8

    if-lez v0, :cond_2

    .line 827
    float-to-double v4, v4

    const-wide v6, 0x3fd51eb860000000L    # 0.33000001311302185

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 831
    :goto_2
    const/4 v4, 0x0

    const/high16 v5, 0x42e80000    # 116.0f

    mul-float/2addr v5, v1

    const/high16 v6, 0x41800000    # 16.0f

    sub-float/2addr v5, v6

    aput v5, v3, v4

    .line 832
    const/4 v4, 0x1

    const/high16 v5, 0x43fa0000    # 500.0f

    sub-float/2addr v2, v1

    mul-float/2addr v2, v5

    aput v2, v3, v4

    .line 833
    const/4 v2, 0x2

    const/high16 v4, 0x43480000    # 200.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v4

    aput v0, v3, v2

    .line 835
    return-object v3

    .line 819
    :cond_0
    const v2, 0x40f92f1b    # 7.787f

    mul-float/2addr v0, v2

    const v2, 0x3e0d3dcb

    add-float/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 824
    :cond_1
    const v0, 0x40f92f1b    # 7.787f

    mul-float/2addr v0, v1

    const v1, 0x3e0d3dcb

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 829
    :cond_2
    const v0, 0x40f92f1b    # 7.787f

    mul-float/2addr v0, v4

    const v4, 0x3e0d3dcb

    add-float/2addr v0, v4

    goto :goto_2
.end method

.method public static XYZtoRGB(FFF)[I
    .locals 12

    .prologue
    .line 550
    const/4 v0, 0x3

    new-array v3, v0, [I

    .line 552
    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p0, v0

    .line 553
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p1, v1

    .line 554
    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, p2, v2

    .line 556
    const v4, 0x404f6402

    mul-float/2addr v4, v0

    const v5, 0x3fc4c155

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    const v5, 0x3eff3ffb

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    .line 557
    const v5, -0x4087ded7

    mul-float/2addr v5, v0

    const v6, 0x3ff02079

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    const v6, 0x3d2a36a0    # 0.041556f

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    .line 558
    const v6, 0x3d63ef28    # 0.055648f

    mul-float/2addr v0, v6

    const v6, 0x3e50f0a6    # 0.204043f

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    const v1, 0x3f8755f8

    mul-float/2addr v1, v2

    add-float v6, v0, v1

    .line 560
    float-to-double v0, v4

    const-wide v8, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    .line 561
    const v0, 0x3f870a3d    # 1.055f

    float-to-double v8, v4

    const-wide v10, 0x3fdaa99300000000L    # 0.41659998893737793

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v1, v8

    mul-float/2addr v0, v1

    const v1, 0x3d6147ae    # 0.055f

    sub-float/2addr v0, v1

    move v2, v0

    .line 565
    :goto_0
    float-to-double v0, v5

    const-wide v8, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1

    .line 566
    const v0, 0x3f870a3d    # 1.055f

    float-to-double v4, v5

    const-wide v8, 0x3fdaa99300000000L    # 0.41659998893737793

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v0, v1

    const v1, 0x3d6147ae    # 0.055f

    sub-float/2addr v0, v1

    move v1, v0

    .line 570
    :goto_1
    float-to-double v4, v6

    const-wide v8, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v0, v4, v8

    if-lez v0, :cond_2

    .line 571
    const v0, 0x3f870a3d    # 1.055f

    float-to-double v4, v6

    const-wide v6, 0x3fdaa99300000000L    # 0.41659998893737793

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v0, v4

    const v4, 0x3d6147ae    # 0.055f

    sub-float/2addr v0, v4

    .line 575
    :goto_2
    const/4 v4, 0x0

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v3, v4

    .line 576
    const/4 v2, 0x1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    aput v1, v3, v2

    .line 577
    const/4 v1, 0x2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v3, v1

    .line 579
    return-object v3

    .line 563
    :cond_0
    const v0, 0x414eb852    # 12.92f

    mul-float/2addr v0, v4

    move v2, v0

    goto :goto_0

    .line 568
    :cond_1
    const v0, 0x414eb852    # 12.92f

    mul-float/2addr v0, v5

    move v1, v0

    goto :goto_1

    .line 573
    :cond_2
    const v0, 0x414eb852    # 12.92f

    mul-float/2addr v0, v6

    goto :goto_2
.end method

.method public static YCCtoRGB(FFF)[I
    .locals 9

    .prologue
    const v8, 0x3f1cac08    # 0.612f

    const v7, 0x3f0978d5    # 0.537f

    const/high16 v6, 0x437f0000    # 255.0f

    const v5, 0x3f7b22d1    # 0.981f

    .line 436
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 438
    mul-float v1, v5, p0

    const v2, 0x3fa851ec    # 1.315f

    sub-float v3, p2, v7

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 439
    mul-float v2, v5, p0

    const v3, 0x3e9f3b64    # 0.311f

    sub-float v4, p1, v8

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x3f2b4396    # 0.669f

    sub-float v4, p2, v7

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 440
    mul-float v3, v5, p0

    const v4, 0x3fcced91    # 1.601f

    sub-float v5, p1, v8

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 442
    const/4 v4, 0x0

    mul-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v0, v4

    .line 443
    const/4 v1, 0x1

    mul-float/2addr v2, v6

    float-to-int v2, v2

    aput v2, v0, v1

    .line 444
    const/4 v1, 0x2

    mul-float v2, v3, v6

    float-to-int v2, v2

    aput v2, v0, v1

    .line 446
    return-object v0
.end method

.method public static YCbCrtoRGB(FFFLCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[I
    .locals 10

    .prologue
    .line 254
    const/4 v0, 0x3

    new-array v3, v0, [I

    .line 257
    sget-object v0, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    if-ne p3, v0, :cond_0

    .line 258
    float-to-double v0, p0

    const-wide/16 v4, 0x0

    float-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    const-wide v4, 0x3ff672b020c49ba6L    # 1.403

    float-to-double v6, p2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v2, v0, v1

    .line 259
    float-to-double v0, p0

    const-wide v4, 0x3fd604189374bc6aL    # 0.344

    float-to-double v6, p1

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    const-wide v4, 0x3fe6d916872b020cL    # 0.714

    float-to-double v6, p2

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    .line 260
    float-to-double v4, p0

    const-wide v6, 0x3ffc5e353f7ced91L    # 1.773

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    float-to-double v8, p2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    .line 268
    :goto_0
    const/4 v4, 0x0

    float-to-int v2, v2

    aput v2, v3, v4

    .line 269
    const/4 v2, 0x1

    float-to-int v1, v1

    aput v1, v3, v2

    .line 270
    const/4 v1, 0x2

    float-to-int v0, v0

    aput v0, v3, v1

    .line 272
    return-object v3

    .line 263
    :cond_0
    float-to-double v0, p0

    const-wide/16 v4, 0x0

    float-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    const-wide v4, 0x3ff91f212d773190L    # 1.5701

    float-to-double v6, p2

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v2, v0, v1

    .line 264
    float-to-double v0, p0

    const-wide v4, 0x3fc7ef9db22d0e56L    # 0.187

    float-to-double v6, p1

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    const-wide v4, 0x3fddd97f62b6ae7dL    # 0.4664

    float-to-double v6, p2

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    double-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    .line 265
    float-to-double v4, p0

    const-wide v6, 0x3ffdb089a0275254L    # 1.8556

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    float-to-double v8, p2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v0, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v0, v4

    goto :goto_0
.end method

.method public static YCoCgtoRGB(FFF)[I
    .locals 6

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 482
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 484
    add-float v1, p0, p1

    sub-float/2addr v1, p2

    .line 485
    add-float v2, p0, p2

    .line 486
    sub-float v3, p0, p1

    sub-float/2addr v3, p2

    .line 488
    const/4 v4, 0x0

    mul-float/2addr v1, v5

    float-to-int v1, v1

    aput v1, v0, v4

    .line 489
    const/4 v1, 0x1

    mul-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v0, v1

    .line 490
    const/4 v1, 0x2

    mul-float v2, v3, v5

    float-to-int v2, v2

    aput v2, v0, v1

    .line 492
    return-object v0
.end method

.method public static YIQtoRGB(DDD)[I
    .locals 8

    .prologue
    .line 208
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 211
    const-wide v2, 0x3fee978d4fdf3b64L    # 0.956

    mul-double/2addr v2, p2

    add-double/2addr v2, p0

    const-wide v4, 0x3fe3df3b645a1cacL    # 0.621

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 212
    const-wide v2, 0x3fd16872b020c49cL    # 0.272

    mul-double/2addr v2, p2

    sub-double v2, p0, v2

    const-wide v4, 0x3fe4b4395810624eL    # 0.647

    mul-double/2addr v4, p4

    sub-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 213
    const-wide v4, 0x3ff1ae147ae147aeL    # 1.105

    mul-double/2addr v4, p2

    sub-double v4, p0, v4

    const-wide v6, 0x3ffb3b645a1cac08L    # 1.702

    mul-double/2addr v6, p4

    add-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 215
    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 216
    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 217
    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 219
    const/4 v4, 0x0

    aput v1, v0, v4

    .line 220
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 221
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 223
    return-object v0
.end method

.method public static YUVtoRGB(FFF)[I
    .locals 10

    .prologue
    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 163
    float-to-double v2, p0

    const-wide/16 v4, 0x0

    float-to-double v6, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3ff23d70a3d70a3dL    # 1.14

    float-to-double v6, p2

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 164
    float-to-double v2, p0

    const-wide v4, 0x3fd95810624dd2f2L    # 0.396

    float-to-double v6, p1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x3fe2978d4fdf3b64L    # 0.581

    float-to-double v6, p2

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    .line 165
    float-to-double v4, p0

    const-wide v6, 0x40003b645a1cac08L    # 2.029

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide/16 v6, 0x0

    float-to-double v8, p2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v6

    double-to-float v3, v4

    .line 167
    const/4 v4, 0x0

    float-to-int v1, v1

    aput v1, v0, v4

    .line 168
    const/4 v1, 0x1

    float-to-int v2, v2

    aput v2, v0, v1

    .line 169
    const/4 v1, 0x2

    float-to-int v2, v3

    aput v2, v0, v1

    .line 171
    return-object v0
.end method

.method private static a(FFF)F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x40c00000    # 6.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 760
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_4

    .line 761
    add-float v0, p2, v2

    .line 762
    :goto_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 763
    sub-float/2addr v0, v2

    .line 764
    :cond_0
    mul-float v1, v3, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 765
    sub-float v1, p1, p0

    mul-float/2addr v1, v3

    mul-float/2addr v0, v1

    add-float p1, p0, v0

    .line 770
    :cond_1
    :goto_1
    return p1

    .line 766
    :cond_2
    mul-float v1, v4, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 768
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_3

    .line 769
    sub-float v1, p1, p0

    const v2, 0x3f2aaaab

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    add-float p1, p0, v0

    goto :goto_1

    :cond_3
    move p1, p0

    .line 770
    goto :goto_1

    :cond_4
    move v0, p2

    goto :goto_0
.end method
