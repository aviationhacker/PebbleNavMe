.class public LCatalano/Imaging/Texture/BinaryPattern/GradientLocalBinaryPattern;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Texture/BinaryPattern/IBinaryPattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)LCatalano/Imaging/Tools/ImageHistogram;
    .locals 12

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "GLBP works only with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 50
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 53
    const/16 v0, 0x100

    new-array v6, v0, [I

    move v3, v2

    .line 55
    :goto_0
    if-ge v3, v5, :cond_a

    move v1, v2

    .line 56
    :goto_1
    if-ge v1, v4, :cond_9

    .line 57
    invoke-virtual {p1, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 58
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p1, v0, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    invoke-virtual {p1, v3, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    sub-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v10, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {p1, v11, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v0, v10

    int-to-double v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    .line 60
    const/4 v0, 0x0

    .line 61
    add-int/lit8 v9, v3, -0x1

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v8, v9

    if-ltz v9, :cond_1

    const/16 v0, 0x80

    .line 62
    :cond_1
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p1, v9, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v8, v9

    if-ltz v9, :cond_2

    add-int/lit8 v0, v0, 0x40

    .line 63
    :cond_2
    add-int/lit8 v9, v3, -0x1

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v8, v9

    if-ltz v9, :cond_3

    add-int/lit8 v0, v0, 0x20

    .line 64
    :cond_3
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p1, v3, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v8, v9

    if-ltz v9, :cond_4

    add-int/lit8 v0, v0, 0x10

    .line 65
    :cond_4
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v8, v9

    if-ltz v9, :cond_5

    add-int/lit8 v0, v0, 0x8

    .line 66
    :cond_5
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p1, v9, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v8, v9

    if-ltz v9, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 67
    :cond_6
    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {p1, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v8, v9

    if-ltz v9, :cond_7

    add-int/lit8 v0, v0, 0x2

    .line 68
    :cond_7
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p1, v3, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    sub-int v7, v9, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v7, v8, v7

    if-ltz v7, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 69
    :cond_8
    aget v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v0

    .line 56
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 55
    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 72
    :cond_a
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v6}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    return-object v0
.end method
