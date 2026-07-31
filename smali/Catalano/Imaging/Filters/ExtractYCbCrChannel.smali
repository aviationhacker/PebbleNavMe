.class public LCatalano/Imaging/Filters/ExtractYCbCrChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/ExtractYCbCrChannel$Channel;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Filters/ExtractYCbCrChannel$Channel;


# direct methods
.method public constructor <init>(LCatalano/Imaging/Filters/ExtractYCbCrChannel$Channel;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, LCatalano/Imaging/Filters/ExtractYCbCrChannel;->a:LCatalano/Imaging/Filters/ExtractYCbCrChannel$Channel;

    .line 63
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Extract Channel works only with RGB images"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 76
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 78
    new-instance v5, LCatalano/Imaging/FastBitmap;

    sget-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v5, v3, v4, v0}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 82
    sget-object v0, LCatalano/Imaging/Filters/ExtractYCbCrChannel$1;->a:[I

    iget-object v2, p0, LCatalano/Imaging/Filters/ExtractYCbCrChannel;->a:LCatalano/Imaging/Filters/ExtractYCbCrChannel$Channel;

    invoke-virtual {v2}, LCatalano/Imaging/Filters/ExtractYCbCrChannel$Channel;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_1
    invoke-virtual {p1, v5}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    goto :goto_0

    :pswitch_0
    move v2, v1

    .line 84
    :goto_1
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 85
    :goto_2
    if-ge v0, v3, :cond_2

    .line 86
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 87
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v7

    .line 88
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    .line 89
    sget-object v9, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-static {v6, v7, v8, v9}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoYCbCr(IIILCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[F

    move-result-object v6

    .line 90
    aget v6, v6, v1

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v2, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 84
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :pswitch_1
    move v2, v1

    .line 95
    :goto_3
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 96
    :goto_4
    if-ge v0, v3, :cond_3

    .line 97
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 98
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v7

    .line 99
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    .line 100
    sget-object v9, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-static {v6, v7, v8, v9}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoYCbCr(IIILCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[F

    move-result-object v6

    .line 101
    const/4 v7, 0x1

    aget v6, v6, v7

    add-float/2addr v6, v11

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v2, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 95
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :pswitch_2
    move v2, v1

    .line 106
    :goto_5
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 107
    :goto_6
    if-ge v0, v3, :cond_4

    .line 108
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 109
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v7

    .line 110
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    .line 111
    sget-object v9, LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;->ITU_BT_601:LCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;

    invoke-static {v6, v7, v8, v9}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoYCbCr(IIILCatalano/Imaging/Tools/ColorConverter$YCbCrColorSpace;)[F

    move-result-object v6

    .line 112
    const/4 v7, 0x2

    aget v6, v6, v7

    add-float/2addr v6, v11

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-virtual {v5, v2, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 106
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
